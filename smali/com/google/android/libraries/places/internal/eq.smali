.class public final synthetic Lcom/google/android/libraries/places/internal/eq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/fs;

.field private final b:Lcom/google/android/libraries/places/internal/eu;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/fs;Lcom/google/android/libraries/places/internal/eu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/eq;->a:Lcom/google/android/libraries/places/internal/fs;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/eq;->b:Lcom/google/android/libraries/places/internal/eu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/eq;->a:Lcom/google/android/libraries/places/internal/fs;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/eq;->b:Lcom/google/android/libraries/places/internal/eu;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/fs;->d(Lcom/google/android/libraries/places/internal/eu;)V

    return-void
.end method
