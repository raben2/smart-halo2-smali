.class Lcom/instabug/chat/ui/g/a$a$a;
.super Ljava/lang/Object;
.source "ChatsAdapter.java"

# interfaces
.implements Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/g/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/ui/g/a$a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/g/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/g/a$a$a;->a:Lcom/instabug/chat/ui/g/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailedToLoad()V
    .locals 0

    return-void
.end method

.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/chat/ui/g/a$a$a$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/chat/ui/g/a$a$a$a;-><init>(Lcom/instabug/chat/ui/g/a$a$a;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method
