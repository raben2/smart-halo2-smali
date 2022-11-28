.class public final Lcom/instabug/library/visualusersteps/VisualUserStep$b;
.super Ljava/lang/Object;
.source "VisualUserStep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/visualusersteps/VisualUserStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a:J

    .line 24
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->j:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/instabug/library/visualusersteps/VisualUserStep$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a:J

    return-wide v0
.end method

.method static synthetic g(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->b:Z

    return p0
.end method


# virtual methods
.method public a(J)Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->b:Z

    return-object p0
.end method

.method public a()Lcom/instabug/library/visualusersteps/VisualUserStep;
    .locals 2

    .line 5
    new-instance v0, Lcom/instabug/library/visualusersteps/VisualUserStep;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instabug/library/visualusersteps/VisualUserStep;-><init>(Lcom/instabug/library/visualusersteps/VisualUserStep$b;Lcom/instabug/library/visualusersteps/VisualUserStep$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->h:Ljava/lang/String;

    return-object p0
.end method
