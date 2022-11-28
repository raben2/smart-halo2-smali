.class public Lcom/instabug/library/l/b/e;
.super Ljava/lang/Object;
.source "Record.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/instabug/library/l/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instabug/library/l/b/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/instabug/library/l/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instabug/library/l/b/d<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/library/l/b/d;Lcom/instabug/library/l/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/l/b/d<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/instabug/library/l/b/d<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/l/b/e;->a:Lcom/instabug/library/l/b/d;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/l/b/e;->b:Lcom/instabug/library/l/b/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/library/l/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instabug/library/l/b/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/e;->a:Lcom/instabug/library/l/b/d;

    return-object v0
.end method

.method public b()Lcom/instabug/library/l/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instabug/library/l/b/d<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/e;->b:Lcom/instabug/library/l/b/d;

    return-object v0
.end method
