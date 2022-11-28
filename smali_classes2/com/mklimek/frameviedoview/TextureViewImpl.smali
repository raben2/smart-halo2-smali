.class public Lcom/mklimek/frameviedoview/TextureViewImpl;
.super Landroid/view/TextureView;
.source "TextureViewImpl.java"

# interfaces
.implements Lcom/mklimek/frameviedoview/Impl;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private listener:Lcom/mklimek/frameviedoview/FrameVideoViewListener;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private placeholderView:Landroid/view/View;

.field private prepared:Z

.field private startInPrepare:Z

.field private surface:Landroid/view/Surface;

.field private videoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/mklimek/frameviedoview/TextureViewImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/mklimek/frameviedoview/TextureViewImpl;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0, p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private prepare()V
    .locals 3

    .line 80
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 81
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->videoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 82
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 83
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 84
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/mklimek/frameviedoview/InfoListener;

    iget-object v2, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->placeholderView:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/mklimek/frameviedoview/InfoListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 85
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 86
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    iget-object v1, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->listener:Lcom/mklimek/frameviedoview/FrameVideoViewListener;

    if-eqz v1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/mklimek/frameviedoview/FrameVideoViewListener;->mediaPlayerPrepareFailed(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->removeVideo()V

    :goto_0
    return-void
.end method

.method private release()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 139
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->prepared:Z

    .line 143
    iput-boolean v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->startInPrepare:Z

    return-void
.end method

.method private removeVideo()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->placeholderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->release()V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Landroid/net/Uri;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->placeholderView:Landroid/view/View;

    .line 46
    iput-object p2, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->videoUri:Landroid/net/Uri;

    .line 47
    iget-boolean p1, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->prepared:Z

    if-eqz p1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->release()V

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->prepare()V

    :cond_1
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 114
    sget-object p1, Lcom/mklimek/frameviedoview/TextureViewImpl;->LOG:Lorg/slf4j/Logger;

    const-string v0, "onBufferingUpdate percent {}"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->removeVideo()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 57
    sget-object v0, Lcom/mklimek/frameviedoview/TextureViewImpl;->LOG:Lorg/slf4j/Logger;

    const-string v1, "onPrepared isPlaying={}"

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 59
    iget-boolean v1, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->startInPrepare:Z

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->startInPrepare:Z

    .line 63
    :cond_0
    iput-boolean v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->prepared:Z

    .line 64
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->listener:Lcom/mklimek/frameviedoview/FrameVideoViewListener;

    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v0, p1}, Lcom/mklimek/frameviedoview/FrameVideoViewListener;->mediaPlayerPrepared(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->prepared:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/mklimek/frameviedoview/TextureViewImpl;->LOG:Lorg/slf4j/Logger;

    const-string v1, "start video"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->startInPrepare:Z

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/mklimek/frameviedoview/TextureViewImpl;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 71
    sget-object p2, Lcom/mklimek/frameviedoview/TextureViewImpl;->LOG:Lorg/slf4j/Logger;

    const-string p3, "onSurfaceTextureAvailable"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 72
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->surface:Landroid/view/Surface;

    .line 73
    iget-boolean p1, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->prepared:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->videoUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->prepare()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 102
    sget-object p1, Lcom/mklimek/frameviedoview/TextureViewImpl;->LOG:Lorg/slf4j/Logger;

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/mklimek/frameviedoview/TextureViewImpl;->removeVideo()V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setFrameVideoViewListener(Lcom/mklimek/frameviedoview/FrameVideoViewListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/mklimek/frameviedoview/TextureViewImpl;->listener:Lcom/mklimek/frameviedoview/FrameVideoViewListener;

    return-void
.end method
