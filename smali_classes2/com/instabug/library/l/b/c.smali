.class public abstract Lcom/instabug/library/l/b/c;
.super Ljava/lang/Object;
.source "DisposalPolicy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/library/l/b/f;)Lcom/instabug/library/l/b/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/l/b/c$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/instabug/library/l/b/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/library/l/b/f;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/l/b/g;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Lcom/instabug/library/l/b/f;
.end method

.method public abstract c()Lcom/instabug/library/l/b/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
