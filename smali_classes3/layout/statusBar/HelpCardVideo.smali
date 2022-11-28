.class public Llayout/statusBar/HelpCardVideo;
.super Landroid/widget/VideoView;
.source "HelpCardVideo.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private videoResource:I

.field private videoStartTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Llayout/statusBar/HelpCardVideo;->videoStartTimer:Ljava/util/Timer;

    const/16 v0, 0x8

    .line 30
    invoke-virtual {p0, v0}, Llayout/statusBar/HelpCardVideo;->setVisibility(I)V

    .line 32
    invoke-direct {p0, p1, p2}, Llayout/statusBar/HelpCardVideo;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Llayout/statusBar/HelpCardVideo;->handler:Landroid/os/Handler;

    .line 36
    new-instance p1, Llayout/statusBar/HelpCardVideo$1;

    invoke-direct {p1, p0}, Llayout/statusBar/HelpCardVideo$1;-><init>(Llayout/statusBar/HelpCardVideo;)V

    invoke-virtual {p0, p1}, Llayout/statusBar/HelpCardVideo;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method static synthetic access$002(Llayout/statusBar/HelpCardVideo;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 22
    iput-object p1, p0, Llayout/statusBar/HelpCardVideo;->videoStartTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Llayout/statusBar/HelpCardVideo;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Llayout/statusBar/HelpCardVideo;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    sget-object v0, Lbike/smarthalo/app/R$styleable;->HelpCardVideo:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Llayout/statusBar/HelpCardVideo;->videoResource:I

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/widget/VideoView;->onDetachedFromWindow()V

    .line 97
    invoke-virtual {p0}, Llayout/statusBar/HelpCardVideo;->stopVideo()V

    return-void
.end method

.method public playVideo(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Llayout/statusBar/HelpCardVideo;->videoResource:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Llayout/statusBar/HelpCardVideo;->setVideoURI(Landroid/net/Uri;)V

    .line 58
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Llayout/statusBar/HelpCardVideo;->videoStartTimer:Ljava/util/Timer;

    .line 59
    iget-object p1, p0, Llayout/statusBar/HelpCardVideo;->videoStartTimer:Ljava/util/Timer;

    new-instance v0, Llayout/statusBar/HelpCardVideo$2;

    invoke-direct {v0, p0}, Llayout/statusBar/HelpCardVideo$2;-><init>(Llayout/statusBar/HelpCardVideo;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public removeFocus()V
    .locals 1

    const/16 v0, 0x8

    .line 90
    invoke-virtual {p0, v0}, Llayout/statusBar/HelpCardVideo;->setVisibility(I)V

    return-void
.end method

.method public stopVideo()V
    .locals 1

    .line 80
    iget-object v0, p0, Llayout/statusBar/HelpCardVideo;->videoStartTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 84
    :cond_0
    invoke-virtual {p0}, Llayout/statusBar/HelpCardVideo;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Llayout/statusBar/HelpCardVideo;->stopPlayback()V

    :cond_1
    return-void
.end method
