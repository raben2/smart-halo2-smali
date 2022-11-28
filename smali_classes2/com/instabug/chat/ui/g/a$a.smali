.class Lcom/instabug/chat/ui/g/a$a;
.super Ljava/lang/Object;
.source "ChatsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/g/a;->a(Landroid/content/Context;Lcom/instabug/chat/ui/g/a$b;Lcom/instabug/chat/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/e/b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/instabug/chat/ui/g/a$b;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/g/a;Lcom/instabug/chat/e/b;Landroid/content/Context;Lcom/instabug/chat/ui/g/a$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/chat/ui/g/a$a;->a:Lcom/instabug/chat/e/b;

    iput-object p3, p0, Lcom/instabug/chat/ui/g/a$a;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/instabug/chat/ui/g/a$a;->c:Lcom/instabug/chat/ui/g/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/g/a$a;->a:Lcom/instabug/chat/e/b;

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/g/a$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/instabug/chat/ui/g/a$a;->a:Lcom/instabug/chat/e/b;

    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/model/AssetEntity$AssetType;->IMAGE:Lcom/instabug/library/model/AssetEntity$AssetType;

    new-instance v3, Lcom/instabug/chat/ui/g/a$a$a;

    invoke-direct {v3, p0}, Lcom/instabug/chat/ui/g/a$a$a;-><init>(Lcom/instabug/chat/ui/g/a$a;)V

    invoke-static {v0, v1, v2, v3}, Lcom/instabug/library/util/BitmapUtils;->loadBitmapForAsset(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V

    :cond_0
    return-void
.end method
