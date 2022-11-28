.class Lcom/instabug/library/network/e/a$a;
.super Ljava/lang/Object;
.source "FeaturesService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/network/e/a;->a(Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instabug/library/network/Request$Callbacks;

.field final synthetic c:Lcom/instabug/library/network/e/a;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/e/a;Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/e/a$a;->c:Lcom/instabug/library/network/e/a;

    iput-object p2, p0, Lcom/instabug/library/network/e/a$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/instabug/library/network/e/a$a;->b:Lcom/instabug/library/network/Request$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/e/a$a;->c:Lcom/instabug/library/network/e/a;

    iget-object v1, p0, Lcom/instabug/library/network/e/a$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instabug/library/network/e/a$a;->b:Lcom/instabug/library/network/Request$Callbacks;

    invoke-static {v0, v1, v2}, Lcom/instabug/library/network/e/a;->a(Lcom/instabug/library/network/e/a;Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method
