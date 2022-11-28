.class public Lcom/instabug/featuresrequest/ui/b/b;
.super Ljava/lang/Object;
.source "FeaturesListBo.java"


# instance fields
.field private a:Lcom/instabug/featuresrequest/ui/b/a;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/instabug/featuresrequest/ui/b/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/b;->b:Z

    .line 5
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/b;->a:Lcom/instabug/featuresrequest/ui/b/a;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/instabug/featuresrequest/d/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/b;->a:Lcom/instabug/featuresrequest/ui/b/a;

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/ui/b/a;->a(I)Lcom/instabug/featuresrequest/d/b;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/b;->a:Lcom/instabug/featuresrequest/ui/b/a;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/a;->a()V

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/b;->a:Lcom/instabug/featuresrequest/ui/b/a;

    const/4 v1, 0x1

    iput v1, v0, Lcom/instabug/featuresrequest/ui/b/a;->a:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/featuresrequest/d/b;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/b;->a:Lcom/instabug/featuresrequest/ui/b/a;

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/ui/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/instabug/featuresrequest/ui/b/b;->b:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/featuresrequest/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/b;->a:Lcom/instabug/featuresrequest/ui/b/a;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/b;->a:Lcom/instabug/featuresrequest/ui/b/a;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/a;->c()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/b;->a:Lcom/instabug/featuresrequest/ui/b/a;

    iget v0, v0, Lcom/instabug/featuresrequest/ui/b/a;->a:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/b;->b:Z

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/b;->a:Lcom/instabug/featuresrequest/ui/b/a;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/a;->d()V

    return-void
.end method
