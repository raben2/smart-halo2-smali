.class public Lcom/mklimek/frameviedoview/VideoViewImpl;
.super Landroid/widget/VideoView;
.source "VideoViewImpl.java"

# interfaces
.implements Lcom/mklimek/frameviedoview/Impl;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private listener:Lcom/mklimek/frameviedoview/FrameVideoViewListener;

.field private placeholderView:Landroid/view/View;

.field private videoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0, p0}, Lcom/mklimek/frameviedoview/VideoViewImpl;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Landroid/net/Uri;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mklimek/frameviedoview/VideoViewImpl;->placeholderView:Landroid/view/View;

    .line 27
    iput-object p2, p0, Lcom/mklimek/frameviedoview/VideoViewImpl;->videoUri:Landroid/net/Uri;

    .line 28
    invoke-virtual {p0, p0}, Lcom/mklimek/frameviedoview/VideoViewImpl;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/mklimek/frameviedoview/VideoViewImpl;->placeholderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual {p0}, Lcom/mklimek/frameviedoview/VideoViewImpl;->stopPlayback()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 57
    new-instance v0, Lcom/mklimek/frameviedoview/InfoListener;

    iget-object v1, p0, Lcom/mklimek/frameviedoview/VideoViewImpl;->placeholderView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/mklimek/frameviedoview/InfoListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 58
    iget-object v0, p0, Lcom/mklimek/frameviedoview/VideoViewImpl;->listener:Lcom/mklimek/frameviedoview/FrameVideoViewListener;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1}, Lcom/mklimek/frameviedoview/FrameVideoViewListener;->mediaPlayerPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mklimek/frameviedoview/VideoViewImpl;->videoUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/mklimek/frameviedoview/VideoViewImpl;->setVideoURI(Landroid/net/Uri;)V

    .line 39
    invoke-virtual {p0}, Lcom/mklimek/frameviedoview/VideoViewImpl;->start()V

    return-void
.end method

.method public setFrameVideoViewListener(Lcom/mklimek/frameviedoview/FrameVideoViewListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mklimek/frameviedoview/VideoViewImpl;->listener:Lcom/mklimek/frameviedoview/FrameVideoViewListener;

    return-void
.end method
