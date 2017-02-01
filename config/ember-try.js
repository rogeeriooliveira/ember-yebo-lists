/*jshint node:true*/
const scenarios = [
  {
    name: 'ember-lts-2.4',
    bower: {
      dependencies: {
        'ember': 'components/ember#lts-2-4'
      },
      resolutions: {
        'ember': 'lts-2-4'
      }
    },
    yarn: {
      devDependencies: {
        'ember-source': null
      }
    }
  },
  {
    name: 'ember-lts-2.8',
    bower: {
      dependencies: {
        'ember': 'components/ember#lts-2-8'
      },
      resolutions: {
        'ember': 'lts-2-8'
      }
    },
    yarn: {
      devDependencies: {
        'ember-source': null
      }
    }
  },
  {
    name: 'ember-release',
    bower: {
      dependencies: {
        'ember': 'components/ember#release'
      },
      resolutions: {
        'ember': 'release'
      }
    },
    yarn: {
      devDependencies: {
        'ember-source': null
      }
    }
  },
  {
    name: 'ember-beta',
    bower: {
      dependencies: {
        'ember': 'components/ember#beta'
      },
      resolutions: {
        'ember': 'beta'
      }
    },
    yarn: {
      devDependencies: {
        'ember-source': null
      }
    }
  },
  {
    name: 'ember-canary',
    bower: {
      dependencies: {
        'ember': 'components/ember#canary'
      },
      resolutions: {
        'ember': 'canary'
      }
    },
    yarn: {
      devDependencies: {
        'ember-source': null
      }
    }
  },
  {
    name: 'ember-default',
    yarn: {
      devDependencies: {}
    }
  }
]

module.exports = {
  bowerOptions: ['--allow-root=true'],
  scenarios: scenarios
};
