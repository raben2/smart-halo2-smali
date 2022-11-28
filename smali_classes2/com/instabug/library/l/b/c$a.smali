.class final Lcom/instabug/library/l/b/c$a;
.super Lcom/instabug/library/l/b/c;
.source "DisposalPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/l/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/library/l/b/f;)Lcom/instabug/library/l/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/instabug/library/l/b/f;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/library/l/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/l/b/c$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/instabug/library/l/b/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instabug/library/l/b/c$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/instabug/library/l/b/c$a;->d:Lcom/instabug/library/l/b/f;

    invoke-direct {p0}, Lcom/instabug/library/l/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/instabug/library/l/b/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/c$a;->d:Lcom/instabug/library/l/b/f;

    return-object v0
.end method

.method public c()Lcom/instabug/library/l/b/h;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/l/b/h$a;

    invoke-direct {v0}, Lcom/instabug/library/l/b/h$a;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/l/b/c$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/instabug/library/l/b/c$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/instabug/library/l/b/c$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/instabug/library/l/b/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/library/l/b/h;

    move-result-object v0

    return-object v0
.end method
