.class final Lcom/google/android/libraries/places/internal/hb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final a:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hb;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hb;->a:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ha;->a([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ha;

    move-result-object v0

    return-object v0
.end method
