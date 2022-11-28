.class public Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "OldOnboardingInstructionsPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;


# instance fields
.field private insertType:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

.field private final view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;)Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;
    .locals 1

    .line 24
    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;)V

    return-object v0
.end method

.method private determineNextPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V
    .locals 1

    .line 120
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter$1;->$SwitchMap$bike$smarthalo$app$onboarding$legacy$OldOnboardingInstructionsActivity$InstructionPage:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 p1, 0x1

    const-string v0, "HAS_COMPLETED_INSTALL_INSTRUCTIONS"

    .line 179
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->completeInstructions()V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayUnlockingSmartHalo()V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayLockingSmartHalo()V

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayFinish()V

    goto :goto_0

    .line 162
    :pswitch_4
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayTightenScrews()V

    goto :goto_0

    .line 158
    :pswitch_5
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayCentering()V

    goto :goto_0

    .line 154
    :pswitch_6
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayPutItTogether()V

    goto :goto_0

    .line 150
    :pswitch_7
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayShortScrews()V

    goto :goto_0

    .line 146
    :pswitch_8
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayLockingTabs()V

    goto :goto_0

    .line 142
    :pswitch_9
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayLockingTabs()V

    goto :goto_0

    .line 138
    :pswitch_a
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayAlignBracket()V

    goto :goto_0

    .line 134
    :pswitch_b
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayAlignBracket()V

    goto :goto_0

    .line 130
    :pswitch_c
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayInsertA()V

    goto :goto_0

    .line 126
    :pswitch_d
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayHandlebar()V

    goto :goto_0

    .line 122
    :pswitch_e
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayMainParts()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private determinePreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V
    .locals 1

    .line 38
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter$1;->$SwitchMap$bike$smarthalo$app$onboarding$legacy$OldOnboardingInstructionsActivity$InstructionPage:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 105
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayLockingSmartHalo()V

    goto/16 :goto_0

    .line 101
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayFinish()V

    goto/16 :goto_0

    .line 96
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayTightenScrews()V

    goto/16 :goto_0

    .line 92
    :pswitch_3
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayCentering()V

    goto/16 :goto_0

    .line 88
    :pswitch_4
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayPutItTogether()V

    goto :goto_0

    .line 84
    :pswitch_5
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayShortScrews()V

    goto :goto_0

    .line 80
    :pswitch_6
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayLockingTabs()V

    goto :goto_0

    .line 72
    :pswitch_7
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->insertType:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    if-eqz p1, :cond_0

    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->NoInsert:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    if-eq p1, v0, :cond_0

    .line 73
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayAlignBracket()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayHandlebar()V

    goto :goto_0

    .line 68
    :pswitch_8
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayHandlebar()V

    goto :goto_0

    .line 60
    :pswitch_9
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->insertType:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->InsertA:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    if-ne p1, v0, :cond_1

    .line 61
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayInsertA()V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->insertType:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->InsertB:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    if-ne p1, v0, :cond_2

    .line 63
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayInsertB()V

    goto :goto_0

    .line 56
    :pswitch_a
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayHandlebar()V

    goto :goto_0

    .line 52
    :pswitch_b
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayHandlebar()V

    goto :goto_0

    .line 48
    :pswitch_c
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayMainParts()V

    goto :goto_0

    .line 44
    :pswitch_d
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->displayIntroWithAnimation()V

    goto :goto_0

    .line 40
    :pswitch_e
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->view:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;->completeInstructions()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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


# virtual methods
.method public setInsertType(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->insertType:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    return-void
.end method

.method public showNextPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->determineNextPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    return-void
.end method

.method public showPreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->determinePreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    return-void
.end method
