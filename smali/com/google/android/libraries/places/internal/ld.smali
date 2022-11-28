.class public Lcom/google/android/libraries/places/internal/ld;
.super Ljava/io/IOException;
.source "PG"


# static fields
.field public static final serialVersionUID:J = -0x166db9773d0dffacL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static a()Lcom/google/android/libraries/places/internal/ld;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/libraries/places/internal/ld;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/ld;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static b()Lcom/google/android/libraries/places/internal/ld;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/ld;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/ld;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c()Lcom/google/android/libraries/places/internal/le;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/libraries/places/internal/le;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/le;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
