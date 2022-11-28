.class Lcom/instabug/library/internal/video/d/b;
.super Lcom/instabug/library/internal/video/d/c;
.source "AudioEncoder.java"


# instance fields
.field private final e:Lcom/instabug/library/internal/video/d/a;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/d/a;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/instabug/library/internal/video/d/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/instabug/library/internal/video/d/c;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/b;->e:Lcom/instabug/library/internal/video/d/a;

    return-void
.end method


# virtual methods
.method protected a()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/b;->e:Lcom/instabug/library/internal/video/d/a;

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/a;->c()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method
