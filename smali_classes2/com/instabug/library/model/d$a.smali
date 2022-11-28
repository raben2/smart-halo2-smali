.class public Lcom/instabug/library/model/d$a;
.super Ljava/lang/Object;
.source "LogDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/instabug/library/model/d$a;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/instabug/library/model/d$a;->d:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/instabug/library/model/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/d$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/instabug/library/model/d;
    .locals 7

    .line 3
    new-instance v6, Lcom/instabug/library/model/d;

    iget-object v1, p0, Lcom/instabug/library/model/d$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/instabug/library/model/d$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/instabug/library/model/d$a;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/instabug/library/model/d$a;->d:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/instabug/library/model/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v6
.end method

.method public b(Ljava/lang/String;)Lcom/instabug/library/model/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/instabug/library/model/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/d$a;->c:Ljava/lang/String;

    return-object p0
.end method
