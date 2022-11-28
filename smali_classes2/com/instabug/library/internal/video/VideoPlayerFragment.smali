.class public Lcom/instabug/library/internal/video/VideoPlayerFragment;
.super Lcom/instabug/library/InstabugBaseFragment;
.source "VideoPlayerFragment.java"

# interfaces
.implements Lcom/instabug/library/internal/video/a$a;


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoPlayerFragment"

.field private static final VIDEO_PATH:Ljava/lang/String; = "video.uri"


# instance fields
.field private mediaControls:Lcom/instabug/library/internal/video/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private position:I

.field private progressDialog:Landroid/app/ProgressDialog;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoUri:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoView:Landroid/widget/VideoView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoViewToolbar:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/InstabugBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->position:I

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/internal/video/VideoPlayerFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/instabug/library/internal/video/VideoPlayerFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->position:I

    return p0
.end method

.method static synthetic access$200(Lcom/instabug/library/internal/video/VideoPlayerFragment;)Landroid/widget/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/instabug/library/internal/video/VideoPlayerFragment;)Lcom/instabug/library/internal/video/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->mediaControls:Lcom/instabug/library/internal/video/a;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/instabug/library/internal/video/VideoPlayerFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/library/internal/video/VideoPlayerFragment;

    invoke-direct {v0}, Lcom/instabug/library/internal/video/VideoPlayerFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "video.uri"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showToolbar(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected consumeNewInstanceSavedArguments()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "video.uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoUri:Ljava/lang/String;

    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$layout;->instabug_lyt_video_view:I

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->VIDEO_PLAYER_TITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v1, Lcom/instabug/library/R$string;->instabug_str_video_player:I

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoViewToolbar:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->mediaControls:Lcom/instabug/library/internal/video/a;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/instabug/library/internal/video/a;

    invoke-direct {v0, p1, p0}, Lcom/instabug/library/internal/video/a;-><init>(Landroid/content/Context;Lcom/instabug/library/internal/video/a$a;)V

    iput-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->mediaControls:Lcom/instabug/library/internal/video/a;

    .line 11
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string p1, "Loading..."

    .line 13
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 17
    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoUri:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->mediaControls:Lcom/instabug/library/internal/video/a;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 23
    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerFragment"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerFragment"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_3

    .line 35
    invoke-virtual {p1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 37
    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    new-instance v0, Lcom/instabug/library/internal/video/VideoPlayerFragment$b;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/video/VideoPlayerFragment$b;-><init>(Lcom/instabug/library/internal/video/VideoPlayerFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 56
    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    new-instance v0, Lcom/instabug/library/internal/video/VideoPlayerFragment$c;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/video/VideoPlayerFragment$c;-><init>(Lcom/instabug/library/internal/video/VideoPlayerFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/instabug/library/internal/video/VideoPlayerFragment;->showToolbar(Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->mediaControls:Lcom/instabug/library/internal/video/a;

    .line 2
    iput-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    .line 3
    iput-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoViewToolbar:Landroid/view/View;

    .line 4
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 5
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    sget v1, Lcom/instabug/library/R$id;->instabug_pbi_footer:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/InstabugBaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/instabug/library/internal/video/VideoPlayerFragment;->showToolbar(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/library/InstabugBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/instabug/library/R$id;->video_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/VideoView;

    iput-object p2, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    .line 3
    sget p2, Lcom/instabug/library/R$id;->ib_core_toolbar_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoViewToolbar:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 6
    new-instance p2, Lcom/instabug/library/internal/video/VideoPlayerFragment$a;

    invoke-direct {p2, p0}, Lcom/instabug/library/internal/video/VideoPlayerFragment$a;-><init>(Lcom/instabug/library/internal/video/VideoPlayerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_0
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object p1

    sget-object p2, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    invoke-virtual {p1, p2}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object p1

    sget-object p2, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-ne p1, p2, :cond_1

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 20
    sget p2, Lcom/instabug/library/R$id;->instabug_pbi_footer:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "Position"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->position:I

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method protected saveState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    const-string v1, "Position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method
