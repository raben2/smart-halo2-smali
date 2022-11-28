.class Lio/grpc/NameResolverRegistry$1;
.super Ljava/lang/Object;
.source "NameResolverRegistry.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/NameResolverRegistry;->refreshProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/grpc/NameResolverProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/NameResolverRegistry;


# direct methods
.method constructor <init>(Lio/grpc/NameResolverRegistry;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lio/grpc/NameResolverRegistry$1;->this$0:Lio/grpc/NameResolverRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/grpc/NameResolverProvider;Lio/grpc/NameResolverProvider;)I
    .locals 0

    .line 90
    invoke-virtual {p1}, Lio/grpc/NameResolverProvider;->priority()I

    move-result p1

    invoke-virtual {p2}, Lio/grpc/NameResolverProvider;->priority()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 87
    check-cast p1, Lio/grpc/NameResolverProvider;

    check-cast p2, Lio/grpc/NameResolverProvider;

    invoke-virtual {p0, p1, p2}, Lio/grpc/NameResolverRegistry$1;->compare(Lio/grpc/NameResolverProvider;Lio/grpc/NameResolverProvider;)I

    move-result p1

    return p1
.end method
