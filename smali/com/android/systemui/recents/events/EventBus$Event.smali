.class public Lcom/android/systemui/recents/events/EventBus$Event;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field cancelled:Z

.field requiresPost:Z

.field trace:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/events/EventBus$Event;

    .line 244
    .local v0, "evt":Lcom/android/systemui/recents/events/EventBus$Event;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/events/EventBus$Event;->cancelled:Z

    .line 245
    return-object v0
.end method

.method onPostDispatch()V
    .registers 1

    .prologue
    .line 236
    return-void
.end method

.method onPreDispatch()V
    .registers 1

    .prologue
    .line 229
    return-void
.end method
