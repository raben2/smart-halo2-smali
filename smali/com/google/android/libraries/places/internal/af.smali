.class public final Lcom/google/android/libraries/places/internal/af;
.super Lcom/google/android/libraries/places/internal/aj;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/aj<",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/aj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/af;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final synthetic convert()Lcom/google/android/libraries/places/internal/az;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/af;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;->newInstance(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;

    move-result-object v0

    return-object v0
.end method
