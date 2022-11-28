.class public Lcom/instabug/apm/b/b/d;
.super Ljava/lang/Object;
.source "SessionCacheModel.java"

# interfaces
.implements Lcom/instabug/library/model/common/Session;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:I

.field private j:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/instabug/apm/b/b/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/instabug/library/model/common/Session;)V
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface/range {p2 .. p2}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/instabug/library/model/common/Session;->getOs()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lcom/instabug/library/model/common/Session;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/instabug/library/model/common/Session;->getUuid()Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-interface/range {p2 .. p2}, Lcom/instabug/library/model/common/Session;->getStartTimestampMicros()J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/instabug/library/model/common/Session;->getStartNanoTime()J

    move-result-wide v10

    const-wide/16 v6, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v13}, Lcom/instabug/apm/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJII)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/instabug/apm/b/b/d;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/instabug/apm/b/b/d;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/instabug/apm/b/b/d;->c:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/instabug/apm/b/b/d;->d:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/instabug/apm/b/b/d;->e:Ljava/lang/String;

    .line 10
    iput-wide p6, p0, Lcom/instabug/apm/b/b/d;->f:J

    .line 11
    iput-wide p8, p0, Lcom/instabug/apm/b/b/d;->g:J

    .line 12
    iput p12, p0, Lcom/instabug/apm/b/b/d;->i:I

    .line 13
    iput-wide p10, p0, Lcom/instabug/apm/b/b/d;->h:J

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/b/d;->j:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/instabug/apm/b/b/e;)V
    .locals 0
    .param p1    # Lcom/instabug/apm/b/b/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/instabug/apm/b/b/d;->n:Lcom/instabug/apm/b/b/e;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/b;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/b/b/d;->j:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/b/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/b/b/d;->k:Ljava/util/List;

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/b/b/d;->f:J

    return-wide v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/b/b/d;->m:Ljava/util/List;

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/b/d;->k:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/f;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/b/b/d;->l:Ljava/util/List;

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/b/d;->m:Ljava/util/List;

    return-object v0
.end method

.method public f()Lcom/instabug/apm/b/b/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/b/d;->n:Lcom/instabug/apm/b/b/e;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/apm/b/b/d;->i:I

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/b/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/b/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getStartNanoTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/b/b/d;->h:J

    return-wide v0
.end method

.method public getStartTimestampMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/b/b/d;->g:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/b/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/b/d;->l:Ljava/util/List;

    return-object v0
.end method
