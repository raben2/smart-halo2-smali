.class public Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "OldOnboardingHelpMountingPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;


# instance fields
.field private view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;)Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;
    .locals 1

    .line 22
    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;)V

    return-object v0
.end method


# virtual methods
.method public showNextPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;)V
    .locals 1

    .line 27
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter$1;->$SwitchMap$bike$smarthalo$app$onboarding$legacy$OldOnboardingHelpMountingActivity$InstructionMountingPage:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 57
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayHelp(Z)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayFinish()V

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayTightenScrews()V

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayCentering()V

    goto :goto_0

    .line 41
    :pswitch_4
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayPutItTogether()V

    goto :goto_0

    .line 37
    :pswitch_5
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displaySpacers()V

    goto :goto_0

    .line 33
    :pswitch_6
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayLongScrews()V

    goto :goto_0

    .line 29
    :pswitch_7
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayRemovingParts()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showPreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;)V
    .locals 1

    .line 65
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter$1;->$SwitchMap$bike$smarthalo$app$onboarding$legacy$OldOnboardingHelpMountingActivity$InstructionMountingPage:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayTightenScrews()V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayCentering()V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayPutItTogether()V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displaySpacers()V

    goto :goto_0

    .line 79
    :pswitch_4
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayLongScrews()V

    goto :goto_0

    .line 75
    :pswitch_5
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayRemovingParts()V

    goto :goto_0

    .line 71
    :pswitch_6
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayHighStemHandleWithTransition()V

    goto :goto_0

    .line 67
    :pswitch_7
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;->displayHelp(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
