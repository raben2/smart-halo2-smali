.class final Lcom/instabug/library/instacapture/screenshot/c/c$b;
.super Ljava/lang/Object;
.source "PixelCopyDelegate.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/instacapture/screenshot/c/c;->c(Landroid/app/Activity;[I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/graphics/Bitmap;",
        "Landroid/util/Pair<",
        "Landroid/graphics/Bitmap;",
        "Ljava/util/HashMap<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:[I


# direct methods
.method constructor <init>(Landroid/app/Activity;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/instacapture/screenshot/c/c$b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/instabug/library/instacapture/screenshot/c/c$b;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/instacapture/screenshot/c/c$b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/instabug/library/instacapture/screenshot/c/c$b;->b:[I

    invoke-static {v0, v1}, Lcom/instabug/library/instacapture/screenshot/c/c;->a(Landroid/app/Activity;[I)Ljava/util/HashMap;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/instabug/library/instacapture/screenshot/c/c$b;->a(Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
