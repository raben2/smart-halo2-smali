.class public Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "OldOnboardingHelpPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;


# instance fields
.field private view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;)Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;
    .locals 1

    .line 22
    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;)V

    return-object v0
.end method

.method private nextPageByButton1(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V
    .locals 1

    .line 90
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter$1;->$SwitchMap$bike$smarthalo$app$onboarding$legacy$OldOnboardingHelpActivity$HelpInstructionPage:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->completeHelpSection()V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayHittingBikePage()V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayNotLockingPage()V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->completeHelpSection()V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->completeHelpSection()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private nextPageByButton2(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V
    .locals 1

    .line 118
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter$1;->$SwitchMap$bike$smarthalo$app$onboarding$legacy$OldOnboardingHelpActivity$HelpInstructionPage:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayDifferentProblemPage()V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayWiggle()V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayCannotRemovePage()V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayDifferentProblemPage()V

    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayDifferentProblemPage()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private nextPageByButton3(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V
    .locals 1

    .line 145
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter$1;->$SwitchMap$bike$smarthalo$app$onboarding$legacy$OldOnboardingHelpActivity$HelpInstructionPage:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displaySmartHaloClippingPage()V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayHittingBikePage()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setNextPage(ILbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayDifferentProblemPage()V

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-direct {p0, p2}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->nextPageByButton3(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V

    goto :goto_0

    .line 33
    :pswitch_2
    invoke-direct {p0, p2}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->nextPageByButton2(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V

    goto :goto_0

    .line 29
    :pswitch_3
    invoke-direct {p0, p2}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->nextPageByButton1(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V
    .locals 1

    .line 51
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter$1;->$SwitchMap$bike$smarthalo$app$onboarding$legacy$OldOnboardingHelpActivity$HelpInstructionPage:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayNotLockingPage()V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayNotLockingPage()V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayNotLockingPage()V

    goto :goto_0

    .line 69
    :pswitch_3
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayNotLockingPage()V

    goto :goto_0

    .line 65
    :pswitch_4
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayMainPage()V

    goto :goto_0

    .line 61
    :pswitch_5
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayMainPage()V

    goto :goto_0

    .line 57
    :pswitch_6
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->displayMainPage()V

    goto :goto_0

    .line 53
    :pswitch_7
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;->completeHelpSection()V

    :goto_0
    return-void

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
