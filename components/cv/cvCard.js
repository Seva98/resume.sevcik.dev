import Card from '../common/card';
import Subtitle from '../common/subtitle';
import Title from '../common/title';
import Button from '../common/button';
import Image from 'next/image';
import { useState } from 'react';

const CvCard = ({ work }) => {
  const { company, positions, description } = work;

  const [showDetails, setShowDetails] = useState('');

  return (
    <Card>
      <Title size={4}>{company}</Title>
      {positions &&
        positions.map(({ position, startDate, endDate, technologies, summary, highlights }) => (
          <div key={company + position}>
            <Title size={2}>{position.replace('\n', '\n')}</Title>
            <Subtitle>
              {startDate} - {endDate}
            </Subtitle>
            <div className="-mt-4 mb-2 flex gap-x-3 ">
              {technologies.map((technology) => (
                <div className="w-8" key={company + position + technology}>
                  <Image className="-my-5" width="100%" height="100%" layout="responsive" objectFit="contain" src={`/icons/${technology}.svg`} />
                </div>
              ))}
            </div>
            {summary.map((s) => (
              <p key={s}>{s}</p>
            ))}
            {showDetails === position ? (
              <>
                <ul>
                  {highlights.map((h) => (
                    <li key={h}>{h}</li>
                  ))}
                </ul>
                <Button className="text-right" onClick={() => setShowDetails('')} up={showDetails}>
                  Less Details
                </Button>
              </>
            ) : (
              <Button className="text-right" onClick={() => setShowDetails(position)} up={showDetails}>
                More Details
              </Button>
            )}
          </div>
        ))}
    </Card>
  );
};

export default CvCard;
