.class public Lcom/instabug/library/model/c$b;
.super Ljava/lang/Object;
.source "LogData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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

.field private c:J

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/instabug/library/model/c$b;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/instabug/library/model/c$b;->c:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/instabug/library/model/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/c$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/instabug/library/model/c;
    .locals 8

    .line 3
    new-instance v7, Lcom/instabug/library/model/c;

    iget-object v1, p0, Lcom/instabug/library/model/c$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/instabug/library/model/c$b;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/instabug/library/model/c$b;->c:J

    iget-object v5, p0, Lcom/instabug/library/model/c$b;->d:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/instabug/library/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/instabug/library/model/c$a;)V

    return-object v7
.end method

.method public b(Ljava/lang/String;)Lcom/instabug/library/model/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/c$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/instabug/library/model/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/c$b;->a:Ljava/lang/String;

    return-object p0
.end method
