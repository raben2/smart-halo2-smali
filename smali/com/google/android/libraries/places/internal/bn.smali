.class public final Lcom/google/android/libraries/places/internal/bn;
.super Lcom/google/android/libraries/places/api/model/Period$Builder;
.source "PG"


# instance fields
.field private a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

.field private b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Period$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/places/api/model/Period;
    .locals 3

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/cm;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bn;->a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/bn;->b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/cm;-><init>(Lcom/google/android/libraries/places/api/model/TimeOfWeek;Lcom/google/android/libraries/places/api/model/TimeOfWeek;)V

    return-object v0
.end method

.method public final setClose(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/TimeOfWeek;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bn;->b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object p0
.end method

.method public final setOpen(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/TimeOfWeek;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bn;->a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object p0
.end method
