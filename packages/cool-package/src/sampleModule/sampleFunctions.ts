import { SampleInterface, SampleClass } from "./sampleTypes";

export function sampleFunction(input: SampleInterface): SampleClass {
  return new SampleClass(input.id, input.name.toUpperCase());
}
