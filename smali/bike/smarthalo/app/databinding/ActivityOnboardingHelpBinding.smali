.class public abstract Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityOnboardingHelpBinding.java"


# instance fields
.field public final helpButton1:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final helpButton2:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final helpButton3:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final helpButton4:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final helpReleasesRightAway:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mainTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final notLockingTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Llayout/onboarding/OnboardingContainerLayout;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 45
    iput-object p4, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton1:Landroid/widget/Button;

    .line 46
    iput-object p5, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton2:Landroid/widget/Button;

    .line 47
    iput-object p6, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton3:Landroid/widget/Button;

    .line 48
    iput-object p7, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpButton4:Landroid/widget/Button;

    .line 49
    iput-object p8, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->helpReleasesRightAway:Landroid/widget/TextView;

    .line 50
    iput-object p9, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->mainTitle:Landroid/widget/TextView;

    .line 51
    iput-object p10, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->notLockingTitle:Landroid/widget/TextView;

    .line 52
    iput-object p11, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0d0027

    .line 84
    invoke-static {p1, p0, v0}, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 69
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 58
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d0027

    .line 64
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d0027

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpBinding;

    return-object p0
.end method
