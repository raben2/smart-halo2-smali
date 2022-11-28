.class Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;
.super Ljava/lang/Object;
.source "SecureDfuImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/dfu/SecureDfuImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectChecksum"
.end annotation


# instance fields
.field CRC32:I

.field offset:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lno/nordicsemi/android/dfu/SecureDfuImpl$1;)V
    .locals 0

    .line 1002
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;-><init>()V

    return-void
.end method
