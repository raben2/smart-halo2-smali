.class Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$1;
.super Ljava/lang/Object;
.source "OldOnboardingHelpMountingActivity.java"

# interfaces
.implements Lcom/mklimek/frameviedoview/FrameVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->setupFrameVideoView(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$InstructionMountingPage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$1;->this$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;

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

    .line 231
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$1;->this$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->access$000(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    move-result-object v0

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountFrameVideoView:Lcom/mklimek/frameviedoview/FrameVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mklimek/frameviedoview/FrameVideoView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$1;->this$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->access$000(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;)Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;

    move-result-object v0

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityOnboardingHelpMountingBinding;->onboardingMountImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity$1;->this$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;

    invoke-static {v0, p1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;->access$102(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingHelpMountingActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 236
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
