import clsx from 'clsx';
import Heading from '@theme/Heading';
import styles from './styles.module.css';

const FeatureList = [
  {
    title: 'PSFramework',
    Svg: require('@site/static/img/ps_black_128.svg').default,
    description: (
      <>
        The scripting toolkit that lets you focus on what really matters: The problems you have to solve.
		Whether it is logging, managing settings, input processing or tab completion - this module has you covered!
      </>
    ),
  },
  {
    title: 'PSModuleDevelopment',
    Svg: require('@site/static/img/ps_black_128.svg').default,
    description: (
      <>
        Treat your projects like cattle, not like pets!
		This developer toolkit offers strong templating and many other tools to help create new code!
      </>
    ),
  },
  {
    title: 'PSFramework.NuGet',
    Svg: require('@site/static/img/ps_black_128.svg').default,
    description: (
      <>
        The greatest tools cannot help, when they are not where they are needed.
		Frustrated with PowerShell-native Package management?
		PSFramework.NuGet is here to help!
      </>
    ),
  },
  {
    title: 'PSUtil',
    Svg: require('@site/static/img/ps_black_128.svg').default,
    description: (
      <>
        Upgrade your console experience.
		Small helper commands, keybindings, aliases and other utilities make it easier to make yourself at home in your console.
      </>
    ),
  },
  {
    title: 'MailDaemon',
    Svg: require('@site/static/img/ps_black_128.svg').default,
    description: (
      <>
        One of the classic challenges of scripting is sending mails.
		This mail client makes it convenient and doesn't lose your mail, just because the server is offline for a bit.
      </>
    ),
  },
];

function Feature({Svg, title, description}) {
  return (
    <div className={clsx('col col--4')}>
      <div className="text--center">
        <Svg className={styles.featureSvg} role="img" />
      </div>
      <div className="text--center padding-horiz--md">
        <Heading as="h3">{title}</Heading>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
