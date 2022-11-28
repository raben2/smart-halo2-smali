.class public Lcom/instabug/library/l/b/j/h/b$a;
.super Lcom/instabug/library/l/b/j/b$a;
.source "LogFileDisposalPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/l/b/j/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/l/b/j/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;Lcom/instabug/library/l/b/i/a;[Lcom/instabug/library/l/b/j/f;)Lcom/instabug/library/l/b/j/b;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/l/b/i/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/instabug/library/l/b/j/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/library/l/b/j/h/b$a$a;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/instabug/library/l/b/j/h/b$a$a;-><init>(Lcom/instabug/library/l/b/j/h/b$a;Ljava/lang/String;[Lcom/instabug/library/l/b/j/f;Lcom/instabug/library/l/b/i/a;)V

    return-object v0
.end method
