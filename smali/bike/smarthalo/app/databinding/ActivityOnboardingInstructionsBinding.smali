.class public abstract Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityOnboardingInstructionsBinding.java"


# instance fields
.field public final frameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final instructionDescriptionSubtextText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final instructionDescriptionText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final instructionDescriptionTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final instructionImage:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final instructionInsertAButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final instructionInsertBButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final instructionNoInsertButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final smarthaloHelpButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILcom/mklimek/frameviedoview/FrameVideoView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Llayout/onboarding/OnboardingContainerLayout;Landroid/widget/Button;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 56
    iput-object p4, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->frameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    .line 57
    iput-object p5, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionSubtextText:Landroid/widget/TextView;

    .line 58
    iput-object p6, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionText:Landroid/widget/TextView;

    .line 59
    iput-object p7, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionTitle:Landroid/widget/TextView;

    .line 60
    iput-object p8, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionImage:Landroid/widget/ImageView;

    .line 61
    iput-object p9, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionInsertAButton:Landroid/widget/Button;

    .line 62
    iput-object p10, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionInsertBButton:Landroid/widget/Button;

    .line 63
    iput-object p11, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionNoInsertButton:Landroid/widget/Button;

    .line 64
    iput-object p12, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    .line 65
    iput-object p13, p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->smarthaloHelpButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0d0029

    .line 97
    invoke-static {p1, p0, v0}, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;
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

    .line 71
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;
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

    const v0, 0x7f0d0029

    .line 77
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;
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

    const v0, 0x7f0d0029

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    return-object p0
.end method
