.class public Lcom/instabug/library/tracking/e;
.super Ljava/lang/Object;
.source "InstabugTrackingStepsProvider.java"


# static fields
.field private static c:Lcom/instabug/library/tracking/e;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/k;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/instabug/library/tracking/e;->b:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/instabug/library/model/k;
    .locals 3

    .line 29
    new-instance v0, Lcom/instabug/library/model/k;

    invoke-direct {v0}, Lcom/instabug/library/model/k;-><init>()V

    .line 30
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInMiliSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/model/k;->a(J)Lcom/instabug/library/model/k;

    .line 31
    invoke-virtual {v0, p1}, Lcom/instabug/library/model/k;->c(Ljava/lang/String;)Lcom/instabug/library/model/k;

    return-object v0
.end method

.method public static c()Lcom/instabug/library/tracking/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/tracking/e;->c:Lcom/instabug/library/tracking/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/tracking/e;

    invoke-direct {v0}, Lcom/instabug/library/tracking/e;-><init>()V

    sput-object v0, Lcom/instabug/library/tracking/e;->c:Lcom/instabug/library/tracking/e;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/tracking/e;->c:Lcom/instabug/library/tracking/e;

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/instabug/library/tracking/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/instabug/library/tracking/e;->b:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p2}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;)Lcom/instabug/library/model/k;

    move-result-object v0

    .line 5
    invoke-static {p2, p1}, Lcom/instabug/library/p/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p2}, Lcom/instabug/library/model/k;->b(Ljava/lang/String;)Lcom/instabug/library/model/k;

    .line 8
    invoke-virtual {v0, p1}, Lcom/instabug/library/model/k;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Lcom/instabug/library/model/k;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/instabug/library/model/k;->d(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/instabug/library/tracking/e;->d()V

    .line 13
    iget-object p1, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    iput-object p1, p0, Lcom/instabug/library/tracking/e;->b:Ljava/lang/String;

    .line 16
    invoke-direct {p0, p4}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;)Lcom/instabug/library/model/k;

    move-result-object v0

    .line 18
    invoke-static {p4, p1, p2, p3}, Lcom/instabug/library/p/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {v0, p2}, Lcom/instabug/library/model/k;->b(Ljava/lang/String;)Lcom/instabug/library/model/k;

    .line 23
    invoke-virtual {v0, p1}, Lcom/instabug/library/model/k;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {v0, p1}, Lcom/instabug/library/model/k;->a(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p1}, Lcom/instabug/library/model/k;->d(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/instabug/library/tracking/e;->d()V

    .line 28
    iget-object p1, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    new-instance v0, Lcom/instabug/library/model/k;

    invoke-direct {v0}, Lcom/instabug/library/model/k;-><init>()V

    .line 33
    invoke-virtual {v0, p1}, Lcom/instabug/library/model/k;->c(Ljava/lang/String;)Lcom/instabug/library/model/k;

    .line 34
    invoke-virtual {v0, p2}, Lcom/instabug/library/model/k;->b(Ljava/lang/String;)Lcom/instabug/library/model/k;

    .line 35
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInMiliSeconds()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/model/k;->a(J)Lcom/instabug/library/model/k;

    .line 37
    invoke-virtual {v0, p3}, Lcom/instabug/library/model/k;->d(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p4}, Lcom/instabug/library/model/k;->a(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p5}, Lcom/instabug/library/model/k;->e(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/instabug/library/tracking/e;->d()V

    .line 42
    iget-object p1, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/j;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcom/instabug/library/model/j;

    invoke-direct {v2}, Lcom/instabug/library/model/j;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/library/model/k;

    invoke-virtual {v3}, Lcom/instabug/library/model/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/j;->a(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/library/model/k;

    invoke-virtual {v3}, Lcom/instabug/library/model/k;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instabug/library/model/j;->a(J)V

    .line 6
    iget-object v3, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/library/model/k;

    invoke-virtual {v3}, Lcom/instabug/library/model/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/j;->b(Ljava/lang/String;)V

    .line 7
    new-instance v3, Lcom/instabug/library/model/j$a;

    invoke-virtual {v2}, Lcom/instabug/library/model/j;->d()Lcom/instabug/library/model/j$b;

    move-result-object v4

    iget-object v5, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instabug/library/model/k;

    invoke-virtual {v5}, Lcom/instabug/library/model/k;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/instabug/library/model/k;

    invoke-virtual {v6}, Lcom/instabug/library/model/k;->e()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/instabug/library/tracking/e;->a:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/instabug/library/model/k;

    invoke-virtual {v7}, Lcom/instabug/library/model/k;->f()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/instabug/library/model/j$a;-><init>(Lcom/instabug/library/model/j$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v3}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$a;)V

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
