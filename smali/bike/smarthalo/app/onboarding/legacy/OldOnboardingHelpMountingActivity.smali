.class public Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OldOnboardingHelpMountingActivity.java"

# interfaces
.implements Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;
    }
.end annotation


# instance fields
.field private final INSTRUCTION_VIDEO_HEIGHT_RATIO:D

.field private final INSTRUCTION_VIDEO_WIDTH_RATIO:D

.field private binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

.field private currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 29
    iput-wide v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->INSTRUCTION_VIDEO_WIDTH_RATIO:D

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    .line 30
    iput-wide v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->INSTRUCTION_VIDEO_HEIGHT_RATIO:D

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;
    .locals 0

    .line 22
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    return-object p0
.end method

.method static synthetic access$102(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 22
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static synthetic lambda$displayCentering$9(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V
    .locals 2

    .line 159
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->Centering:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    const v0, 0x7f110223

    const v1, 0x7f110206

    .line 161
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setTexts(II)V

    .line 163
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountDescriptionSubtextText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;)V

    return-void
.end method

.method public static synthetic lambda$displayFinish$11(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V
    .locals 4

    .line 183
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f110207

    const v2, 0x7f11021a

    const v3, 0x7f11021b

    invoke-direct {p0, v1, v2, v3, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setTexts(IIII)V

    .line 185
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801de

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    .line 187
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->Finish:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    return-void
.end method

.method public static synthetic lambda$displayHelp$12(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 288
    :goto_0
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setResult(I)V

    .line 289
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->finishAndCrossFade(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$displayLongScrews$5(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V
    .locals 2

    const v0, 0x7f11020c

    const v1, 0x7f11020b

    .line 100
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setTexts(II)V

    .line 102
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801b9

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    .line 104
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->LongScrews:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    return-void
.end method

.method public static synthetic lambda$displayPutItTogether$8(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V
    .locals 4

    .line 148
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->PutItTogether:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    .line 150
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f110222

    const v2, 0x7f110212

    const v3, 0x7f110213

    invoke-direct {p0, v1, v2, v3, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setTexts(IIII)V

    .line 152
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;)V

    return-void
.end method

.method public static synthetic lambda$displayRemovingParts$6(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V
    .locals 2

    const v0, 0x7f11020e

    const v1, 0x7f11020d

    .line 111
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setTexts(II)V

    .line 113
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->RemovingParts:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    .line 115
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;)V

    return-void
.end method

.method public static synthetic lambda$displaySpacers$7(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V
    .locals 2

    const v0, 0x7f11020c

    const v1, 0x7f11020f

    .line 122
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setTexts(II)V

    .line 124
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->NewSpacers:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    .line 126
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801b3

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static synthetic lambda$displayTightenScrews$10(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V
    .locals 4

    const v0, 0x7f110224

    const v1, 0x7f110225

    const v2, 0x7f110226

    const/high16 v3, -0x10000

    .line 172
    invoke-direct {p0, v0, v1, v2, v3}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setTexts(IIII)V

    .line 174
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->TightenScrews:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    .line 176
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;)V

    return-void
.end method

.method public static synthetic lambda$null$2(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setResult(I)V

    .line 48
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->finishAndCrossFade(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$onBackPressed$4(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setResult(I)V

    .line 71
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->finishAndCrossFade(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;->showNextPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;->showPreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$3(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$pw3u5AbTIFMXmH87NTsqCkoI2tA;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$pw3u5AbTIFMXmH87NTsqCkoI2tA;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->playExitAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method private pauseVideo()V
    .locals 2

    .line 278
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 280
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 281
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountFrameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mklimek/frameviedoview/FrameVideoView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setTexts(II)V
    .locals 1

    .line 246
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountDescriptionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountDescriptionSubtextText:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setTexts(IIII)V
    .locals 1

    .line 254
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountDescriptionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountDescriptionSubtextText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 260
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountDescriptionSubtextText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountDescriptionSubtextText:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setUpVideoSource(I)V
    .locals 3

    .line 266
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountFrameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mklimek/frameviedoview/FrameVideoView;->setup(Landroid/net/Uri;I)V

    return-void
.end method

.method private setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;)V
    .locals 1

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;Z)V

    return-void
.end method

.method private setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;Z)V
    .locals 5

    if-nez p2, :cond_0

    .line 198
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 199
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 200
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 202
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountFrameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    invoke-virtual {v0}, Lcom/mklimek/frameviedoview/FrameVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-double v1, p2

    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    mul-double v1, v1, v3

    double-to-int p2, v1

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 205
    :cond_0
    sget-object p2, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$2;->$SwitchMap$bike$smarthalo$app$onboarding$legacy$OldOnboardingHelpMountingActivity$InstructionMountingPage:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f1001fd

    .line 219
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setUpVideoSource(I)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f1001fb

    .line 215
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setUpVideoSource(I)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f1001f6

    .line 211
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setUpVideoSource(I)V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f1001f8

    .line 207
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setUpVideoSource(I)V

    .line 227
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountFrameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    new-instance p2, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$1;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {p1, p2}, Lcom/mklimek/frameviedoview/FrameVideoView;->setFrameVideoViewListener(Lcom/mklimek/frameviedoview/FrameVideoViewListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showImage(ILandroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 270
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->pauseVideo()V

    .line 272
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "INTENT_HAS_COMPLETED_ONBOARDING"

    .line 92
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x64

    .line 93
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayCentering()V
    .locals 2

    .line 158
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$XS8XOqNwZSGjTQ6kPPiDZSPLXDU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$XS8XOqNwZSGjTQ6kPPiDZSPLXDU;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayFinish()V
    .locals 2

    .line 182
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$9BeDe_BJpoOacCbybvZXjehcE0s;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$9BeDe_BJpoOacCbybvZXjehcE0s;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayHelp(Z)V
    .locals 2

    .line 287
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$J_8fOWfDBCo8TYY3v9hfnURKrrw;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$J_8fOWfDBCo8TYY3v9hfnURKrrw;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;Z)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->playExitAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayHighStemHandle()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->pauseVideo()V

    const v0, 0x7f11020a

    const v1, 0x7f110209

    .line 138
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setTexts(II)V

    .line 140
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const v1, 0x7f0801b4

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->showImage(ILandroid/widget/ImageView$ScaleType;)V

    .line 142
    sget-object v0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->HighStemHandle:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    return-void
.end method

.method public displayHighStemHandleWithTransition()V
    .locals 2

    .line 132
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$imJiWMJCBPVSJ6G3AmBCtTMCiZ0;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$imJiWMJCBPVSJ6G3AmBCtTMCiZ0;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayLongScrews()V
    .locals 2

    .line 99
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$RSDMmPgu4M9KjE5pB8RRlDIzhXY;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$RSDMmPgu4M9KjE5pB8RRlDIzhXY;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayPutItTogether()V
    .locals 2

    .line 147
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$T-PSANkdwTz_pzXHRRx5bdYStbg;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$T-PSANkdwTz_pzXHRRx5bdYStbg;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayRemovingParts()V
    .locals 2

    .line 110
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$z06c0un6axcJTxlH0w2o3tdbahc;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$z06c0un6axcJTxlH0w2o3tdbahc;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displaySpacers()V
    .locals 2

    .line 121
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$3ZNthDx0lALLmt-YAuqc1IwRzpE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$3ZNthDx0lALLmt-YAuqc1IwRzpE;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public displayTightenScrews()V
    .locals 2

    .line 171
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$nxT8rw0eQp2w85jbM7P7C0YHmNA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$nxT8rw0eQp2w85jbM7P7C0YHmNA;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    sget-object v1, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->HighStemHandle:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    sget-object v1, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->Finish:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;->showPreviousPage(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v1, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$Pj5Ak0A48JRmOoNB_cSkqDPp2hg;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$Pj5Ak0A48JRmOoNB_cSkqDPp2hg;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->playExitAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0028

    .line 36
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    .line 37
    invoke-static {p0, p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$View;)Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->presenter:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingPresenterContract$Presenter;

    .line 39
    sget-object p1, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;->HighStemHandle:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    .line 41
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$6OkJQ6DaxE3d--VFHgCUphmA0V4;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$6OkJQ6DaxE3d--VFHgCUphmA0V4;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->setOnNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$9T4tS1B7YoMJny_lYRs1xRnbY8Q;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$9T4tS1B7YoMJny_lYRs1xRnbY8Q;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    new-instance v0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$L74bUlqdCvQtrhoLxjFwnsqTTV8;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$OldOnboardingHelpMountingActivity$L74bUlqdCvQtrhoLxjFwnsqTTV8;-><init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "INTENT_HAS_COMPLETED_ONBOARDING"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->setCloseButtonVisibility(Z)V

    .line 57
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingContainer:Llayout/onboarding/OnboardingContainerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->playEntranceAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    .line 58
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->displayHighStemHandle()V

    .line 60
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->currentPage:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;

    invoke-direct {p0, p1, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 85
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountFrameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    invoke-virtual {v0}, Lcom/mklimek/frameviedoview/FrameVideoView;->onPause()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 79
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->binding:Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountFrameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    invoke-virtual {v0}, Lcom/mklimek/frameviedoview/FrameVideoView;->onResume()V

    return-void
.end method
