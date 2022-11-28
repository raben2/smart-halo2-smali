.class final Lcom/google/android/libraries/places/internal/gm;
.super Lcom/google/android/libraries/places/internal/gl;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/gm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/gm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/gm;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm;->a:Lcom/google/android/libraries/places/internal/gm;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/gl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/go;->b(II)I

    const/4 p1, -0x1

    return p1
.end method

.method public final a(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
