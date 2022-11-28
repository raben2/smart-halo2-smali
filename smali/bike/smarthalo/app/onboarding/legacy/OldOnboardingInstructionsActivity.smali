.class public Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OldOnboardingInstructionsActivity.java"

# interfaces
.implements Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;
    }
.end annotation


# static fields
.field public static final INTENT_HAS_COMPLETED_ONBOARDING:Ljava/lang/String; = "INTENT_HAS_COMPLETED_ONBOARDING"


# instance fields
.field private binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

.field private currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

.field private hasCompletedOnboarding:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;
    .locals 0

    .line 21
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    return-object p0
.end method

.method static synthetic access$102(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 21
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private finishAndAnimate()V
    .locals 2

    .line 360
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->finish()V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    .line 361
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public static synthetic lambda$Au7YRUji9iiywcsIq02RwEpAgZ4(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->finishAndAnimate()V

    return-void
.end method

.method public static synthetic lambda$displayAlignBracket$13(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 2

    .line 226
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->AlignBracket:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    .line 228
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionText:Landroid/widget/TextView;

    const v1, 0x7f11021c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$displayCentering$17(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 2

    .line 292
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->Centering:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    const v0, 0x7f110223

    const v1, 0x7f110206

    .line 294
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(II)V

    .line 296
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionSubtextText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$displayFinish$19(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 4

    .line 318
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f110207

    const v2, 0x7f11021a

    const v3, 0x7f11021b

    invoke-direct {p0, v1, v2, v3, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(IIII)V

    .line 320
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801de

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    .line 322
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->smarthaloHelpButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->Finish:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    return-void
.end method

.method public static synthetic lambda$displayHandlebar$10(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 3

    .line 176
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->Handlebar:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setInsertButtonsVisible(Z)V

    const v0, 0x7f11021f

    const v1, 0x7f11021d

    .line 180
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(II)V

    .line 182
    iget-object v2, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v2, v2, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    .line 189
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public static synthetic lambda$displayHighStemHandle$7(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->pauseVideo()V

    .line 123
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->smarthaloHelpButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f11020a

    const v1, 0x7f110209

    .line 125
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(II)V

    .line 127
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801b4

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    .line 129
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->HighStemHandle:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    return-void
.end method

.method public static synthetic lambda$displayInsertA$11(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 5

    .line 196
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->InsertA:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    .line 198
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;->setInsertType(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setInsertButtonsVisible(Z)V

    .line 202
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionText:Landroid/widget/TextView;

    const v2, 0x7f11021e

    invoke-virtual {p0, v2}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "A"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801ad

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static synthetic lambda$displayInsertB$12(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 5

    .line 211
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->InsertB:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    .line 213
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;->setInsertType(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setInsertButtonsVisible(Z)V

    .line 217
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionText:Landroid/widget/TextView;

    const v2, 0x7f11021e

    invoke-virtual {p0, v2}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "B"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801ae

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static synthetic lambda$displayLockingSmartHalo$20(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 4

    .line 331
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->LockingSmartHalo:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    .line 333
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f110216

    const v2, 0x7f110214

    const v3, 0x7f110215

    invoke-direct {p0, v1, v2, v3, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(IIII)V

    .line 335
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    .line 337
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->smarthaloHelpButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$displayLockingTabs$14(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 2

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setInsertButtonsVisible(Z)V

    const v0, 0x7f110220

    const v1, 0x7f110217

    .line 239
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(II)V

    .line 241
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801b7

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    .line 243
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->LockingTabs:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    return-void
.end method

.method public static synthetic lambda$displayLongScrews$5(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 2

    const v0, 0x7f11020c

    const v1, 0x7f11020b

    .line 98
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(II)V

    .line 100
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801b9

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    .line 102
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->LongScrews:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    return-void
.end method

.method public static synthetic lambda$displayMainParts$9(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 2

    .line 161
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801de

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setInsertButtonsVisible(Z)V

    .line 165
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionTitle:Landroid/widget/TextView;

    const v1, 0x7f110219

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->MainParts:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    return-void
.end method

.method public static synthetic lambda$displayPutItTogether$16(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 4

    .line 281
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->PutItTogether:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    .line 283
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f110222

    const v2, 0x7f110212

    const v3, 0x7f110213

    invoke-direct {p0, v1, v2, v3, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(IIII)V

    .line 285
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$displayRemovingParts$6(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 2

    const v0, 0x7f11020e

    const v1, 0x7f11020d

    .line 110
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(II)V

    .line 112
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->RemovingParts:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    .line 114
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$displayShortScrews$15(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 4

    .line 250
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f110221

    const v2, 0x7f110208

    const v3, 0x7f110218

    invoke-direct {p0, v1, v2, v3, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(IIII)V

    .line 252
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801b8

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    .line 254
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->Screws:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    return-void
.end method

.method public static synthetic lambda$displaySpacers$8(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 2

    const v0, 0x7f11020c

    const v1, 0x7f11020f

    .line 136
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(II)V

    .line 138
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->NewSpacers:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    .line 140
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801b3

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static synthetic lambda$displayTightenScrews$18(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 4

    const v0, 0x7f110224

    const v1, 0x7f110225

    const v2, 0x7f110226

    const/high16 v3, -0x10000

    .line 305
    invoke-direct {p0, v0, v1, v2, v3}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(IIII)V

    .line 307
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->TightenScrews:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    .line 309
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    .line 311
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->smarthaloHelpButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$displayUnlockingSmartHalo$21(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 4

    .line 344
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->UnlockSmartHalo:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    .line 346
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f11022c

    const v2, 0x7f110227

    const v3, 0x7f11022b

    invoke-direct {p0, v1, v2, v3, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(IIII)V

    .line 348
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    .line 350
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->smarthaloHelpButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$null$3(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 0

    .line 47
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->finishAndCrossFade(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;->showNextPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;->showPreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$2(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->displayHelp()V

    return-void
.end method

.method public static synthetic lambda$onCreate$4(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$SsteMLDziS79e5NGW3qEfSz2ltE;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$SsteMLDziS79e5NGW3qEfSz2ltE;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->playExitAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method private pauseVideo()V
    .locals 2

    .line 442
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 444
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 447
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->frameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mklimek/frameviedoview/FrameVideoView;->setVisibility(I)V

    return-void
.end method

.method private setInsertButtonsVisible(Z)V
    .locals 4

    .line 464
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->setNextButtonVisibility(Z)V

    .line 465
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionInsertAButton:Landroid/widget/Button;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionInsertBButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionNoInsertButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private setTexts(II)V
    .locals 1

    .line 259
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionSubtextText:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setTexts(IIII)V
    .locals 1

    .line 267
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionSubtextText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionSubtextText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionDescriptionSubtextText:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setUpVideoSource(I)V
    .locals 3

    .line 373
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->frameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mklimek/frameviedoview/FrameVideoView;->setup(Landroid/net/Uri;I)V

    return-void
.end method

.method private setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V
    .locals 1

    const/4 v0, 0x0

    .line 377
    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;Z)V

    return-void
.end method

.method private setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 382
    iget-object p2, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->frameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    invoke-virtual {p2}, Lcom/mklimek/frameviedoview/FrameVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getOnboardingVideoHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 385
    :cond_0
    sget-object p2, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$2;->$SwitchMap$bike$smarthalo$app$onboarding$legacy$OldOnboardingInstructionsActivity$InstructionPage:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f1001fd

    .line 415
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setUpVideoSource(I)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f1001fc

    .line 411
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setUpVideoSource(I)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f1001fa

    .line 407
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setUpVideoSource(I)V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f1001fb

    .line 403
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setUpVideoSource(I)V

    goto :goto_0

    :pswitch_4
    const p1, 0x7f1001f6

    .line 399
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setUpVideoSource(I)V

    goto :goto_0

    :pswitch_5
    const p1, 0x7f1001f5

    .line 395
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setUpVideoSource(I)V

    goto :goto_0

    :pswitch_6
    const p1, 0x7f1001f9

    .line 391
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setUpVideoSource(I)V

    goto :goto_0

    :pswitch_7
    const p1, 0x7f1001f7

    .line 387
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setUpVideoSource(I)V

    .line 423
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->frameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    new-instance p2, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$1;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {p1, p2}, Lcom/mklimek/frameviedoview/FrameVideoView;->setFrameVideoViewListener(Lcom/mklimek/frameviedoview/FrameVideoViewListener;)V

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

.method private showImage(ILandroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 365
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->pauseVideo()V

    .line 367
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "INTENT_HAS_COMPLETED_ONBOARDING"

    .line 84
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public completeInstructions()V
    .locals 2

    .line 356
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$Au7YRUji9iiywcsIq02RwEpAgZ4;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$Au7YRUji9iiywcsIq02RwEpAgZ4;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->playExitAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayAlignBracket()V
    .locals 2

    .line 225
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$JTETWY6_RtG8NJesXBruPBDBHpY;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$JTETWY6_RtG8NJesXBruPBDBHpY;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayCentering()V
    .locals 2

    .line 291
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$sa3dqTxIN3T4bSoszzSwXm0ccWE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$sa3dqTxIN3T4bSoszzSwXm0ccWE;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayFinish()V
    .locals 2

    .line 317
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$qATqqMJU46JCAWr_M8E1dekHr44;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$qATqqMJU46JCAWr_M8E1dekHr44;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayHandlebar()V
    .locals 2

    .line 175
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$Hhcwc-8sauhhZMaJ3FyoNqyEVPQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$Hhcwc-8sauhhZMaJ3FyoNqyEVPQ;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayHelp()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->hasCompletedOnboarding:Z

    invoke-static {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpActivity;->startActivity(Landroid/content/Context;Z)V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    .line 92
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public displayHighStemHandle()V
    .locals 2

    .line 120
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$GaymHIr8b1e8dbfPX8D8wQFI_ho;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$GaymHIr8b1e8dbfPX8D8wQFI_ho;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayInsertA()V
    .locals 2

    .line 195
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$uLbgcbFU-uAvxESCjhewLjTP0HA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$uLbgcbFU-uAvxESCjhewLjTP0HA;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayInsertB()V
    .locals 2

    .line 210
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$DaAtlXHDMXBDJMQwENgAceth0SQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$DaAtlXHDMXBDJMQwENgAceth0SQ;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayIntro()V
    .locals 2

    const v0, 0x7f110211

    const v1, 0x7f110210

    .line 150
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setTexts(II)V

    .line 152
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionImage:Landroid/widget/ImageView;

    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->Intro:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    return-void
.end method

.method public displayIntroWithAnimation()V
    .locals 2

    .line 146
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$CIqWN9ifvTWA5WOehdNsPd5mvD8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$CIqWN9ifvTWA5WOehdNsPd5mvD8;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayLockingSmartHalo()V
    .locals 2

    .line 330
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$nGZSvcbKsbNf0GJgLNM_ih-w5m4;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$nGZSvcbKsbNf0GJgLNM_ih-w5m4;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayLockingTabs()V
    .locals 2

    .line 236
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$XMYHBL4E4lPV8LrRn2ODh7MFz0w;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$XMYHBL4E4lPV8LrRn2ODh7MFz0w;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayLongScrews()V
    .locals 2

    .line 97
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$NQKyYjQprhD_jyK_5ZpetwWWnKs;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$NQKyYjQprhD_jyK_5ZpetwWWnKs;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayMainParts()V
    .locals 2

    .line 160
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$j3OMHQ2GOlFzFIet4BxPTBYpHD4;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$j3OMHQ2GOlFzFIet4BxPTBYpHD4;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayPutItTogether()V
    .locals 2

    .line 280
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$rQxE-1IH1qwITu_qxrauZk9dwWA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$rQxE-1IH1qwITu_qxrauZk9dwWA;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayRemovingParts()V
    .locals 2

    .line 109
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$EL9Xp4Myhc6RZPSm_bHkphSqc_M;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$EL9Xp4Myhc6RZPSm_bHkphSqc_M;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayShortScrews()V
    .locals 2

    .line 249
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$_8O9swwBzNk0WJbu9HxfULoQ6ZA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$_8O9swwBzNk0WJbu9HxfULoQ6ZA;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displaySpacers()V
    .locals 2

    .line 135
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$JV5Yn6r-7RDhB4wh3lF4iLMO7SU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$JV5Yn6r-7RDhB4wh3lF4iLMO7SU;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayTightenScrews()V
    .locals 2

    .line 304
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$klm9S4wwSVWByNRbwJP2LciqFKo;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$klm9S4wwSVWByNRbwJP2LciqFKo;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayUnlockingSmartHalo()V
    .locals 2

    .line 343
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$F1GGux_J7aV29Agi2FqjECKHJ-c;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$F1GGux_J7aV29Agi2FqjECKHJ-c;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 78
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;->showPreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    return-void
.end method

.method public onClickInsertAButton(Landroid/view/View;)V
    .locals 0

    .line 451
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->displayInsertA()V

    return-void
.end method

.method public onClickInsertBButton(Landroid/view/View;)V
    .locals 0

    .line 455
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->displayInsertB()V

    return-void
.end method

.method public onClickNoInsertButton(Landroid/view/View;)V
    .locals 1

    .line 459
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;

    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;->NoInsert:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;->setInsertType(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;)V

    .line 460
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->displayLockingTabs()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0029

    .line 36
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    .line 37
    invoke-static {p0, p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$View;)Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsPresenterContract$Presenter;

    .line 39
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$HFpNZ_Wn2uSN1HC3cy4Fb1UsTog;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$HFpNZ_Wn2uSN1HC3cy4Fb1UsTog;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->setOnNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$0b9DdNFZl_ED9MjOibHqhFXkLtU;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$0b9DdNFZl_ED9MjOibHqhFXkLtU;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->smarthaloHelpButton:Landroid/widget/Button;

    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$Jsbj7nwhPCL0qGKE17ALex2MllE;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$Jsbj7nwhPCL0qGKE17ALex2MllE;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$AkfbN8ONJBMii9DMNX41ZV42OxI;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingInstructionsActivity$AkfbN8ONJBMii9DMNX41ZV42OxI;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "INTENT_HAS_COMPLETED_ONBOARDING"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 52
    iput-boolean v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->hasCompletedOnboarding:Z

    .line 53
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->setCloseButtonVisibility(Z)V

    .line 56
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Llayout/onboarding/OnboardingContainerLayout;->playEntranceAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    .line 58
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->displayIntro()V

    .line 60
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 72
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->frameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    invoke-virtual {v0}, Lcom/mklimek/frameviedoview/FrameVideoView;->onPause()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->frameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    invoke-virtual {v0}, Lcom/mklimek/frameviedoview/FrameVideoView;->onResume()V

    return-void
.end method
