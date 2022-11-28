.class public Lcom/instabug/library/l/b/j/h/c;
.super Lcom/instabug/library/l/b/j/e;
.source "LogFileRecord.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/l/b/j/e;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public b()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/l/b/j/e;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/logging/d;->b(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-super {p0}, Lcom/instabug/library/l/b/j/e;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    :goto_0
    return-wide v0
.end method
