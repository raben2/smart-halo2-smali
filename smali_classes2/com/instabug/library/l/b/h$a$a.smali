.class Lcom/instabug/library/l/b/h$a$a;
.super Lcom/instabug/library/l/b/h;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/l/b/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/library/l/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/instabug/library/l/b/h$a;


# direct methods
.method constructor <init>(Lcom/instabug/library/l/b/h$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/l/b/h$a$a;->d:Lcom/instabug/library/l/b/h$a;

    iput-object p2, p0, Lcom/instabug/library/l/b/h$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/instabug/library/l/b/h$a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/instabug/library/l/b/h$a$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instabug/library/l/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/l/b/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/h$a$a;->d:Lcom/instabug/library/l/b/h$a;

    iget-object v1, p0, Lcom/instabug/library/l/b/h$a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/instabug/library/l/b/h$a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/instabug/library/l/b/h$a$a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/instabug/library/l/b/h$a;->a(Lcom/instabug/library/l/b/h$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/h$a$a;->a:Ljava/lang/String;

    return-object v0
.end method
