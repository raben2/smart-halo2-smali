.class Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$1;
.super Ljava/lang/Object;
.source "OldOnboardingInstructionsActivity.java"

# interfaces
.implements Lcom/mklimek/frameviedoview/FrameVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$InstructionPage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$1;->this$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mediaPlayerPrepareFailed(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mediaPlayerPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 427
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$1;->this$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->access$000(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    move-result-object v0

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->frameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mklimek/frameviedoview/FrameVideoView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$1;->this$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->access$000(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;

    move-result-object v0

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingInstructionsBinding;->instructionImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity$1;->this$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;

    invoke-static {v0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->access$102(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 432
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
