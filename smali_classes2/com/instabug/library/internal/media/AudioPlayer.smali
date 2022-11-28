.class public Lcom/instabug/library/internal/media/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/internal/media/AudioPlayer$OnStopListener;,
        Lcom/instabug/library/internal/media/AudioPlayer$e;,
        Lcom/instabug/library/internal/media/AudioPlayer$d;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioPlayer"


# instance fields
.field private filePath:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private onGetDurationListener:Lcom/instabug/library/internal/media/AudioPlayer$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final onStopListeners:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/instabug/library/internal/media/AudioPlayer$OnStopListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->onStopListeners:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/internal/media/AudioPlayer;Lcom/instabug/library/internal/media/AudioPlayer$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/media/AudioPlayer;->doAction(Lcom/instabug/library/internal/media/AudioPlayer$d;)V

    return-void
.end method

.method static synthetic access$100(Lcom/instabug/library/internal/media/AudioPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/media/AudioPlayer;->notifyOnStopListeners()V

    return-void
.end method

.method private doAction(Lcom/instabug/library/internal/media/AudioPlayer$d;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/internal/media/AudioPlayer$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->onGetDurationListener:Lcom/instabug/library/internal/media/AudioPlayer$e;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/instabug/library/internal/media/AudioPlayer$e;->a(I)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static getFormattedDurationText(J)Ljava/lang/String;
    .locals 6

    const-wide/32 v0, 0x36ee80

    .line 1
    div-long v2, p0, v0

    long-to-int v3, v2

    .line 2
    rem-long v0, p0, v0

    const-wide/32 v4, 0xea60

    div-long/2addr v0, v4

    long-to-int v1, v0

    .line 3
    rem-long/2addr p0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr p0, v4

    long-to-int p1, p0

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-lez v3, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    const-string p0, "%02d:%02d:%02d"

    invoke-static {v4, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "%02d:%02d"

    invoke-static {v3, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyOnStopListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->onStopListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/media/AudioPlayer$OnStopListener;

    .line 2
    invoke-virtual {v1}, Lcom/instabug/library/internal/media/AudioPlayer$OnStopListener;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepare(Lcom/instabug/library/internal/media/AudioPlayer$d;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    iget-object v1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/instabug/library/internal/media/AudioPlayer$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/library/internal/media/AudioPlayer$a;-><init>(Lcom/instabug/library/internal/media/AudioPlayer;Lcom/instabug/library/internal/media/AudioPlayer$d;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 9
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 11
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AudioPlayer"

    const-string v1, "Playing audio file failed"

    .line 15
    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stream(Ljava/lang/String;Lcom/instabug/library/internal/media/AudioPlayer$d;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "AudioPlayer"

    const-string p2, "Audio file path can not be null"

    .line 1
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p2}, Lcom/instabug/library/internal/media/AudioPlayer;->doAction(Lcom/instabug/library/internal/media/AudioPlayer$d;)V

    goto :goto_0

    .line 7
    :cond_1
    iput-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->filePath:Ljava/lang/String;

    .line 8
    invoke-direct {p0, p2}, Lcom/instabug/library/internal/media/AudioPlayer;->prepare(Lcom/instabug/library/internal/media/AudioPlayer$d;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnStopListener(Lcom/instabug/library/internal/media/AudioPlayer$OnStopListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->onStopListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instabug/library/internal/media/AudioPlayer$OnStopListener;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/instabug/library/internal/media/AudioPlayer$b;

    invoke-direct {p1, p0}, Lcom/instabug/library/internal/media/AudioPlayer$b;-><init>(Lcom/instabug/library/internal/media/AudioPlayer;)V

    iput-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 10
    iget-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_0
    return-void
.end method

.method public getDurationAsync(Ljava/lang/String;Lcom/instabug/library/internal/media/AudioPlayer$e;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/internal/media/AudioPlayer$d;->GET_DURATION:Lcom/instabug/library/internal/media/AudioPlayer$d;

    invoke-direct {p0, p1, v0}, Lcom/instabug/library/internal/media/AudioPlayer;->stream(Ljava/lang/String;Lcom/instabug/library/internal/media/AudioPlayer$d;)V

    .line 2
    iput-object p2, p0, Lcom/instabug/library/internal/media/AudioPlayer;->onGetDurationListener:Lcom/instabug/library/internal/media/AudioPlayer$e;

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/media/AudioPlayer;->notifyOnStopListeners()V

    .line 2
    sget-object v0, Lcom/instabug/library/internal/media/AudioPlayer$d;->PAUSE:Lcom/instabug/library/internal/media/AudioPlayer$d;

    invoke-direct {p0, v0}, Lcom/instabug/library/internal/media/AudioPlayer;->doAction(Lcom/instabug/library/internal/media/AudioPlayer$d;)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->filePath:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 7
    iput-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/internal/media/AudioPlayer;->pause()V

    .line 2
    sget-object v0, Lcom/instabug/library/internal/media/AudioPlayer$d;->START:Lcom/instabug/library/internal/media/AudioPlayer$d;

    invoke-direct {p0, p1, v0}, Lcom/instabug/library/internal/media/AudioPlayer;->stream(Ljava/lang/String;Lcom/instabug/library/internal/media/AudioPlayer$d;)V

    return-void
.end method
