.class public Lcom/google/android/libraries/places/internal/fy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/ny;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/ny;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/fs;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/fs;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fy;->a:Lcom/google/android/libraries/places/internal/fs;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/libraries/places/internal/fe;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fy;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/fs;->a(Lcom/google/android/libraries/places/internal/fe;)V

    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
