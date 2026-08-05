import {
  type Feature,
  type FeatureChoiced,
  type FeatureChoicedServerData,
  FeatureColorInput,
  type FeatureValueProps,
} from '../base';
import { FeatureDropdownInput } from '../dropdowns';

// Snout
export const feature_ob_snout: FeatureChoiced = {
  name: 'Snout',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const feature_ob_snout_color: Feature<string> = {
  name: 'Snout color',
  component: FeatureColorInput,
};

// Tail
export const feature_ob_tail: FeatureChoiced = {
  name: 'Tail',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const feature_ob_tail_color: Feature<string> = {
  name: 'Tail color',
  component: FeatureColorInput,
};

// Ears
export const feature_ob_ears: FeatureChoiced = {
  name: 'Ears',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const feature_ob_ears_color: Feature<string> = {
  name: 'Ears color',
  component: FeatureColorInput,
};

// Horns
export const feature_ob_horns: FeatureChoiced = {
  name: 'Horns',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const feature_ob_horns_color: Feature<string> = {
  name: 'Horns color',
  component: FeatureColorInput,
};
