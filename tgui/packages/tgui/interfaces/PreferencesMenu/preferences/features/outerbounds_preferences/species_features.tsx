import {
  type Feature,
  type FeatureChoiced,
  type FeatureChoicedServerData,
  FeatureColorInput,
  type FeatureValueProps,
} from '../base';
import { FeatureDropdownInput } from '../dropdowns';

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
