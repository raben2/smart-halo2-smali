.class public final Lio/grpc/InternalManagedChannelProvider;
.super Ljava/lang/Object;
.source "InternalManagedChannelProvider.java"


# static fields
.field public static final HARDCODED_CLASSES:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget-object v0, Lio/grpc/ManagedChannelProvider;->HARDCODED_CLASSES:Ljava/lang/Iterable;

    sput-object v0, Lio/grpc/InternalManagedChannelProvider;->HARDCODED_CLASSES:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
