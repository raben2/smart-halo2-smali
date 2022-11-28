.class Llayout/statusBar/HelpCardVideo$1;
.super Ljava/lang/Object;
.source "HelpCardVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/HelpCardVideo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/statusBar/HelpCardVideo;


# direct methods
.method constructor <init>(Llayout/statusBar/HelpCardVideo;)V
    .locals 0

    .line 36
    iput-object p1, p0, Llayout/statusBar/HelpCardVideo$1;->this$0:Llayout/statusBar/HelpCardVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
