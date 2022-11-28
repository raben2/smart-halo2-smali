.class public Lcom/instabug/library/l/b/j/h/d;
.super Lcom/instabug/library/l/b/j/g$a;
.source "LogFileScopeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/l/b/j/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;)Lcom/instabug/library/l/b/j/e;
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/l/b/j/h/c;

    invoke-direct {v0, p1}, Lcom/instabug/library/l/b/j/h/c;-><init>(Ljava/io/File;)V

    return-object v0
.end method
