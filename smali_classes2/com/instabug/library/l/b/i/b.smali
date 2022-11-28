.class public abstract Lcom/instabug/library/l/b/i/b;
.super Ljava/lang/Object;
.source "DataInspector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/instabug/library/l/b/i/d<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/instabug/library/l/b/i/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instabug/library/l/b/i/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/instabug/library/l/b/i/e;)V
    .locals 0
    .param p1    # Lcom/instabug/library/l/b/i/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/l/b/i/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/l/b/i/b;->a:Lcom/instabug/library/l/b/i/e;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Collection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/i/c;",
            ">;"
        }
    .end annotation
.end method
