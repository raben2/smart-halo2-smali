.class public Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OldOnboardingHelpActivity.java"

# interfaces
.implements Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;
    }
.end annotation


# static fields
.field public static final HITTING_STEM_REQUEST_CODE:I = 0x64


# instance fields
.field private binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

.field private currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

.field private hasCompletedBoarding:Z

.field private presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 23
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->Main:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    return-void
.end method

.method private init()V
    .locals 3

    .line 37
    invoke-static {p0, p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$View;)Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;

    const v0, 0x7f0d0027

    .line 39
    invoke-static {p0, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    .line 41
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->setBackButtonVisibility(Z)V

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->setNextButtonVisibility(Z)V

    .line 44
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton1:Landroid/widget/Button;

    new-instance v2, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$JyYG64Mu6J5YIPLJX1HCoBZErGs;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$JyYG64Mu6J5YIPLJX1HCoBZErGs;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    new-instance v2, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$Xrpiq_eqMfL4u7oIrvVWv52SYB8;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$Xrpiq_eqMfL4u7oIrvVWv52SYB8;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton3:Landroid/widget/Button;

    new-instance v2, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$IFRc3kjaUVU9NfVnLYDlmq-PhiE;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$IFRc3kjaUVU9NfVnLYDlmq-PhiE;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton4:Landroid/widget/Button;

    new-instance v2, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$sNm1bNV_jkSMYVi4Fda5YMhTxbw;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$sNm1bNV_jkSMYVi4Fda5YMhTxbw;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v2, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$t2tYH_uKPJ8TT13IR36JEeMrf3k;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$t2tYH_uKPJ8TT13IR36JEeMrf3k;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v2}, Llayout/onboarding/OnboardingContainerLayout;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v2, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$v-SN0sr0dwbFRQGQCJ59HfLC9pE;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$v-SN0sr0dwbFRQGQCJ59HfLC9pE;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v2}, Llayout/onboarding/OnboardingContainerLayout;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "INTENT_HAS_COMPLETED_ONBOARDING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->hasCompletedBoarding:Z

    .line 58
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    invoke-virtual {v1, v0}, Llayout/onboarding/OnboardingContainerLayout;->setCloseButtonVisibility(Z)V

    .line 61
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->playEntranceAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public static synthetic lambda$completeHelpSection$12(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V
    .locals 0

    .line 141
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->finishAndCrossFade(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$displayCannotRemovePage$11(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V
    .locals 6

    const v1, 0x7f1102ea

    const v2, 0x7f1102e5

    const v3, 0x7f1102e8

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    .line 116
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->setTexts(IIIII)V

    const/4 v0, 0x2

    .line 117
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton1:Landroid/widget/Button;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->makeViewsVisible(Z[Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->setButtonGray(Landroid/widget/Button;)V

    .line 119
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->CannotRemove:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    return-void
.end method

.method public static synthetic lambda$displayLockStuckPage$9(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V
    .locals 6

    const v1, 0x7f1102e4

    const v2, 0x7f1102e5

    const v3, 0x7f1102e8

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    .line 96
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->setTexts(IIIII)V

    const/4 v0, 0x2

    .line 97
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton1:Landroid/widget/Button;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->makeViewsVisible(Z[Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->setButtonGray(Landroid/widget/Button;)V

    .line 99
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->LockStuck:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    return-void
.end method

.method public static synthetic lambda$displayMainPage$7(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V
    .locals 8

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->mainTitle:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const v3, 0x7f1102dc

    const v4, 0x7f1102e3

    const v5, 0x7f1102dd

    const v6, 0x7f1102e0

    const v7, 0x7f1102df

    move-object v2, p0

    .line 76
    invoke-direct/range {v2 .. v7}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->setTexts(IIIII)V

    const/4 v0, 0x4

    .line 77
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton1:Landroid/widget/Button;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton3:Landroid/widget/Button;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton4:Landroid/widget/Button;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->makeViewsVisible(Z[Landroid/view/View;)V

    .line 79
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->Main:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    .line 80
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->Main:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    return-void
.end method

.method public static synthetic lambda$displayNotLockingPage$8(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V
    .locals 6

    const v1, 0x7f1102e2

    const v2, 0x7f1102e0

    const v3, 0x7f1102e1

    const v4, 0x7f1102e7

    const/4 v5, -0x1

    move-object v0, p0

    .line 87
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->setTexts(IIIII)V

    const/4 v0, 0x3

    .line 88
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton1:Landroid/widget/Button;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton3:Landroid/widget/Button;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->makeViewsVisible(Z[Landroid/view/View;)V

    .line 89
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->NotLocking:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    return-void
.end method

.method public static synthetic lambda$displaySmartHaloClippingPage$10(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V
    .locals 6

    const v1, 0x7f1102e6

    const v2, 0x7f1102e5

    const v3, 0x7f1102e8

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    .line 106
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->setTexts(IIIII)V

    const/4 v0, 0x2

    .line 107
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton1:Landroid/widget/Button;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v2, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->makeViewsVisible(Z[Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->setButtonGray(Landroid/widget/Button;)V

    .line 109
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->ReleasesRightAway:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    return-void
.end method

.method public static synthetic lambda$displayWiggle$14(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V
    .locals 6

    const v1, 0x7f1102e4

    const v2, 0x7f1102e5

    const v3, 0x7f1102e8

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    .line 156
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->setTexts(IIIII)V

    const/4 v0, 0x2

    .line 157
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton1:Landroid/widget/Button;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->makeViewsVisible(Z[Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->WiggleSmartHalo:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    return-void
.end method

.method public static synthetic lambda$init$0(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;Landroid/view/View;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;->setNextPage(ILbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$init$1(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;->setNextPage(ILbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$init$2(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;Landroid/view/View;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;->setNextPage(ILbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$init$3(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;Landroid/view/View;)V
    .locals 2

    .line 47
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;->setNextPage(ILbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$init$4(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;Landroid/view/View;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;->setPreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$init$6(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$bqQKo4wrJ-V0cddt_oF3qwKv1Qc;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$bqQKo4wrJ-V0cddt_oF3qwKv1Qc;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->playExitAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public static synthetic lambda$null$5(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->finishAndCrossFade(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$onBackPressed$13(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V
    .locals 0

    .line 149
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->finishAndCrossFade(Landroid/app/Activity;)V

    return-void
.end method

.method private varargs makeViewsVisible(Z[Landroid/view/View;)V
    .locals 4

    .line 205
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 206
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object p2, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpReleasesRightAway:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setButtonGray(Landroid/widget/Button;)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setTexts(IIIII)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 168
    iget-object v2, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v2, v2, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->mainTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->mainTitle:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->mainTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eq p2, v1, :cond_1

    .line 175
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 177
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    if-eq p3, v1, :cond_2

    .line 181
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(I)V

    .line 182
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f08020a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 184
    :cond_2
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    if-eq p4, v1, :cond_3

    .line 188
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton3:Landroid/widget/Button;

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 190
    :cond_3
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton3:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    if-eq p5, v1, :cond_4

    .line 194
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton4:Landroid/widget/Button;

    invoke-virtual {p1, p5}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 196
    :cond_4
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton4:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "INTENT_HAS_COMPLETED_ONBOARDING"

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public completeHelpSection()V
    .locals 2

    .line 141
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$lT3TrPFBM8OqoXbtmcBvXZEjvkQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$lT3TrPFBM8OqoXbtmcBvXZEjvkQ;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->playExitAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayCannotRemovePage()V
    .locals 2

    .line 115
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$m-XAV3BCt2vLiCSDQXEE6hwb2yA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$m-XAV3BCt2vLiCSDQXEE6hwb2yA;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayDifferentProblemPage()V
    .locals 3

    const v0, 0x7f1103c2

    const v1, 0x7f110187

    const/4 v2, 0x0

    .line 135
    invoke-static {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/WebBrowserActivity;->startActivity(Landroid/content/Context;IIZ)V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    .line 136
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public displayHittingBikePage()V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->hasCompletedBoarding:Z

    invoke-static {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->startActivity(Landroid/app/Activity;Z)V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    .line 130
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public displayLockStuckPage()V
    .locals 2

    .line 95
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$gySIyXyns29H8sqBFLCH8U2dhJU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$gySIyXyns29H8sqBFLCH8U2dhJU;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayMainPage()V
    .locals 2

    .line 74
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$3yS5b5UsVTnTDeUW8nWOd8Py7l8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$3yS5b5UsVTnTDeUW8nWOd8Py7l8;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayNotLockingPage()V
    .locals 2

    .line 86
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$Vms9kseRl7y2hliT-T_iyxmg69I;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$Vms9kseRl7y2hliT-T_iyxmg69I;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displaySmartHaloClippingPage()V
    .locals 2

    .line 105
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$NiFJgXeZ5kc8HfS6CUQSwGmdxLU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$NiFJgXeZ5kc8HfS6CUQSwGmdxLU;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayWiggle()V
    .locals 2

    .line 155
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$hXQNYom1-fGF3eDyxTdPG7JYXGM;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$hXQNYom1-fGF3eDyxTdPG7JYXGM;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x64

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 227
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->finishAndCrossFade(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 146
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    sget-object v1, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;->Main:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpPresenterContract$Presenter;->setPreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity$HelpInstructionPage;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$JuuwDq0LMY2jps-d2u88HUGUi7k;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpActivity$JuuwDq0LMY2jps-d2u88HUGUi7k;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->playExitAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    :goto_0
    return-void
.end method

.method public onClickClickHere(Landroid/view/View;)V
    .locals 0

    .line 201
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->displayHittingBikePage()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->init()V

    return-void
.end method
