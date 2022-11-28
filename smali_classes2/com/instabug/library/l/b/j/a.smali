.class public Lcom/instabug/library/l/b/j/a;
.super Ljava/lang/Object;
.source "FileDisposable.java"

# interfaces
.implements Lcom/instabug/library/l/b/i/c;


# instance fields
.field private final a:Lcom/instabug/library/l/b/j/e;


# direct methods
.method public constructor <init>(Lcom/instabug/library/l/b/j/e;)V
    .locals 0
    .param p1    # Lcom/instabug/library/l/b/j/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/l/b/j/a;->a:Lcom/instabug/library/l/b/j/e;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/l/b/j/a;->a:Lcom/instabug/library/l/b/j/e;

    invoke-virtual {v0}, Lcom/instabug/library/l/b/j/e;->a()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t delete disposable file ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "couldn\'t delete disposable file"

    .line 6
    invoke-static {p0, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
