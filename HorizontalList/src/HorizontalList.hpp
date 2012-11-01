// Default empty project template
#ifndef HorizontalList_HPP_
#define HorizontalList_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class HorizontalList : public QObject
{
    Q_OBJECT
public:
    HorizontalList(bb::cascades::Application *app);
    virtual ~HorizontalList() {}
};


#endif /* HorizontalList_HPP_ */
