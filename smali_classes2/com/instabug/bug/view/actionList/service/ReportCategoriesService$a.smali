.class Lcom/instabug/bug/view/actionList/service/ReportCategoriesService$a;
.super Ljava/lang/Object;
.source "ReportCategoriesService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService$a;->a:Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/instabug/bug/view/actionList/service/a;->a()Lcom/instabug/bug/view/actionList/service/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService$a;->a:Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;

    invoke-virtual {v0, v1}, Lcom/instabug/bug/view/actionList/service/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReportCategoriesService"

    const-string v2, "An error has occurred while fetching report categories"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
