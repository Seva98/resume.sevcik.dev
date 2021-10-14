import useGlitch from '../../lib/useGlitch';

const Button = (props) => {
  const glitch = useGlitch('button');
  const { className, children, active } = props;

  return (
    <div className={`text-center h-14 ${className || ''}`} {...props}>
      <a
        className={`${glitch} px-12 py-3 font-subtitle font-extrabold uppercase text-3xl bg-gradient-to-r from-pink-primary to-teal-primary bg-clip-text text-transparent ${
          active ? 'button-active' : ''
        }`}
      >
        {children}
      </a>
    </div>
  );
};

export default Button;
