require("spec_helper")

describe(Survey) do
  it { should have_many(:questions) }
end

describe(Survey) do
  it("converts the survey title to uppercase") do
    survey = Survey.create({:title => "rate your professor"})
    expect(survey.title()).to(eq("Rate Your Professor"))
  end
end
