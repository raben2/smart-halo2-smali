.class public abstract Lcom/instabug/featuresrequest/ui/b/a;
.super Ljava/lang/Object;
.source "BaseFeaturesListDao.java"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/instabug/featuresrequest/ui/b/a;->a:I

    return-void
.end method


# virtual methods
.method protected abstract a(I)Lcom/instabug/featuresrequest/d/b;
.end method

.method protected abstract a()V
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/featuresrequest/d/b;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/featuresrequest/d/b;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract c()I
.end method

.method protected d()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/b/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/featuresrequest/ui/b/a;->a:I

    return-void
.end method
