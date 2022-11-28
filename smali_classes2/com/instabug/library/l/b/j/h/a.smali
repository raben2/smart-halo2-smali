.class public Lcom/instabug/library/l/b/j/h/a;
.super Ljava/lang/Object;
.source "DisabledLogFileRule.java"

# interfaces
.implements Lcom/instabug/library/l/b/j/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/instabug/library/l/b/i/f;)Z
    .locals 0
    .param p1    # Lcom/instabug/library/l/b/i/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/instabug/library/l/b/j/e;

    invoke-virtual {p0, p1}, Lcom/instabug/library/l/b/j/h/a;->a(Lcom/instabug/library/l/b/j/e;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/instabug/library/l/b/j/e;)Z
    .locals 0
    .param p1    # Lcom/instabug/library/l/b/j/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
