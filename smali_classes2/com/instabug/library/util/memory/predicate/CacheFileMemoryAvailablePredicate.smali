.class public Lcom/instabug/library/util/memory/predicate/CacheFileMemoryAvailablePredicate;
.super Lcom/instabug/library/util/memory/predicate/FileMemoryAvailablePredicate;
.source "CacheFileMemoryAvailablePredicate.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/util/memory/predicate/FileMemoryAvailablePredicate;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method a(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/instabug/library/util/FileUtils;->isCacheFile(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
