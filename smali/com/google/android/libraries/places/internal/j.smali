.class public final Lcom/google/android/libraries/places/internal/j;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:J


# instance fields
.field public final b:Landroid/net/wifi/WifiManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lcom/google/android/libraries/places/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/j;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/a;)V
    .locals 0
    .param p1    # Landroid/net/wifi/WifiManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/j;->b:Landroid/net/wifi/WifiManager;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/j;->c:Lcom/google/android/libraries/places/internal/a;

    return-void
.end method
