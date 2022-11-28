.class public final Lcom/google/android/libraries/places/internal/bu;
.super Lcom/google/android/libraries/places/api/model/PlusCode$Builder;
.source "PG"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/PlusCode$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/places/api/model/PlusCode;
    .locals 3

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/cu;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bu;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/bu;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/cu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setCompoundCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PlusCode$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bu;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setGlobalCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PlusCode$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bu;->b:Ljava/lang/String;

    return-object p0
.end method
